const express = require('express');
const path = require('path');
const fs = require('fs');
const { PrismaClient } = require('@prisma/client');

const app = express();
const port = 3000;

const prisma = new PrismaClient();

// MIME types for static file serving
const mimeTypes = {
    '.html': 'text/html',
    '.css': 'text/css',
    '.js': 'application/javascript',
    '.jpg': 'image/jpeg',
    '.jpeg': 'image/jpeg',
};

// Function to serve static files
const serveStaticFile = (filePath, res) => {
    const extname = String(path.extname(filePath)).toLowerCase();
    const contentType = mimeTypes[extname] || 'application/octet-stream';

    fs.readFile(filePath, (err, data) => {
        if (err) {
            if (err.code === 'ENOENT') {
                res.status(404).send('File not found');
            } else {
                res.status(500).send('Server error');
            }
            return;
        }
        res.setHeader('Content-Type', contentType);
        res.status(200).send(data);
    });
};

// Route to serve index.html
app.get('/', (req, res) => {
    serveStaticFile(path.join(__dirname, 'public', 'index.html'), res);
});

// Route to serve styles.css
app.get('/styles.css', (req, res) => {
    serveStaticFile(path.join(__dirname, 'public', 'styles.css'), res);
});

// Route to serve movie.html with dynamic movie ID
app.get('/movie/:id', async (req, res) => {
    const movieId = parseInt(req.params.id); // Assuming id is numeric



    console.log("we are in ");
    try {
        // Fetch movie data from Prisma
        const movie = await prisma.film.findUnique({
            where: { id: movieId },
        });

        if (!movie) {
            res.status(404).send('Movie not found');
            return;
        }


        console.log(movie);

        // Read the HTML file
        const filePath = path.join(__dirname, 'public', 'movie.html');
        fs.readFile(filePath, 'utf8', (err, data) => {
            if (err) {
                console.error('Error reading file:', err);
                res.status(500).send('Internal Server Error');
                return;
            }

            // Replace placeholders in the HTML with movie data
            let modifiedHtml = data.replace('{{MOVIE_TITLE}}', movie.titre || '');
            modifiedHtml = modifiedHtml.replace('{{MOVIE_DESCRIPTION}}', movie.desc_film || '');
            modifiedHtml = modifiedHtml.replace('{{MOVIE_POSTER}}', movie.poster || '');

            modifiedHtml = modifiedHtml.replace('{{MOVIE_POSTER_BG}}', movie.poster || '');
            modifiedHtml = modifiedHtml.replace('{{MOVIE_CATEGORY}}', movie.categoy || '');

            // Send the modified HTML response
            res.status(200).send(modifiedHtml);
        });
    } catch (err) {
        console.error('Error fetching movie data:', err);
        res.status(500).send('Internal Server Error');
    }
});




// Route to serve all films as JSON
app.get('/api/films', async (req, res) => {
    try {
        const films = await prisma.film.findMany();
        res.json(films);
    } catch (error) {
        console.error('Error retrieving films:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});



app.get('/api/category/:name', async (req, res) => {
    const categoryName = req.params.name;
    try {
        const films = await prisma.film.findMany({
            where: {
                categoy: categoryName
            }
        });
        res.json(films);
    } catch (error) {
        console.error('Error retrieving films by category:', error);
        res.status(500).json({ error: 'Internal Server Error' });
    }
});




// Middleware to serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, 'public')));

// Catch-all route for serving static files not explicitly handled
app.use((req, res) => {
    const filePath = path.join(__dirname, 'public', req.path);
    serveStaticFile(filePath, res);
});

// Start the server
app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});

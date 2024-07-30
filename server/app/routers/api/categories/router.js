const express = require("express");

const router = express.Router();

const { browse, read } = require("../../../controllers/categoryActions");
/* ************************************************************************* */
// Define Your API Routes Here
/* ************************************************************************* */

router.get("/", browse);

router.get("/:id", read);

/* ************************************************************************* */

module.exports = router;

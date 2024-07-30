const express = require("express");

const router = express.Router();

const { browse, read } = require("../../../controllers/programActions");

router.get("/", browse);

router.get("/:id", read); // Complete path is: /api/programs/:id

module.exports = router;

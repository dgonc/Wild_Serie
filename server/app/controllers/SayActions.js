// Declare the action

const welcome = (req, res) => {
  console.info(req.query);

  res.send("Welcome to Wild Series !");
};

// Export it

module.exports = { welcome };

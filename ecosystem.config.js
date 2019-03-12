module.exports = {
  apps : [{
    name        : "trumail",
    script      : "go",
    combine_logs: true,
    args        : "run main.go"
  }]
}

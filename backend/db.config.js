const { Sequelize } = require('sequelize')

const sequelize = new Sequelize('absensi_dua', 'root' , '', {
    dialect: "mysql",
    host: "localhost"
})

module.exports = sequelize
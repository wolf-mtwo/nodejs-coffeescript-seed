#node modules
mongoose = require 'mongoose'
express = require 'express'
bodyParser = require 'body-parser'
compression = require 'compression'
cookieParser = require 'cookie-parser'

#own modules
booter = require './booter'
errorHandler = require './components/error_handler'
logger = require './components/logger'
successHandler = require './components/success_handler'

#set express app
app = express()

app.use bodyParser.urlencoded({ extended: true })
app.use bodyParser.json()
app.use compression()
app.use cookieParser()

router = express.Router()

#setup app enviroment
env = process.env.NODE_ENV || 'development'
envCfg = require "../config/env/#{env}"

#setup port for server
envCfg.server_port =  process.env.PORT_ENV || envCfg.server_port

#setup env name for specific config

#setup app components
app.locals.errorHandler = errorHandler
app.locals.logger = logger
app.locals.cfg = envCfg
app.locals.successHandler = successHandler

#booter app
dbConnector = booter.dbConnector.getInstance mongoose
dbConnector.connect envCfg.db

booter.loadModules app.locals, router, mongoose

#Register our routes
#all of our routes will be prefixed with /api
app.use '/api', router

module.exports = app

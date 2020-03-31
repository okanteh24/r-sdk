# Intrinio API
#
# Welcome to the Intrinio API! Through our Financial Data Marketplace, we offer a wide selection of financial data feed APIs sourced by our own proprietary processes as well as from many data vendors. For a complete API request / response reference please view the [Intrinio API documentation](https://intrinio.com/documentation/api_v2). If you need additional help in using the API, please visit the [Intrinio website](https://intrinio.com) and click on the chat icon in the lower right corner.
#
# OpenAPI spec version: 2.9.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title DataPoint operations
#' @description IntrinioSDK.DataPoint
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_data_point_number Data Point (Number)
#'
#'
#' get_data_point_text Data Point (Text)
#'
#' }
#'
#' @export
DataPointApi <- R6::R6Class(
  'DataPointApi',
  public = list(
    userAgent = "Swagger-Codegen/1.1.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_data_point_number = function(identifier, tag, opts = list()){
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/data_point/{identifier}/{tag}/number"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      if (!missing(`tag`)) {
        urlPath <- gsub(paste0("\\{", "tag", "\\}"), `tag`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("Numeric" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("Numeric" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("Numeric" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("Numeric" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- Numeric$new()
          returnObject$fromJSONString(result)
        }

        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        result <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        result <- httr::content(resp, "text", encoding = "UTF-8")
        Response$new(result, resp)
      }

    },
    get_data_point_text = function(identifier, tag, opts = list()){
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/data_point/{identifier}/{tag}/text"
      if (!missing(`identifier`)) {
        urlPath <- gsub(paste0("\\{", "identifier", "\\}"), `identifier`, urlPath)
      }

      if (!missing(`tag`)) {
        urlPath <- gsub(paste0("\\{", "tag", "\\}"), `tag`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- httr::content(resp, "text", encoding = "UTF-8")

        if ("Character" == "Numeric") {
          returnObject <- as.numeric(jsonlite::fromJSON(result))
        } else if ("Character" == "Integer") {
          returnObject <- as.integer(jsonlite::fromJSON(result))
        } else if ("Character" == "Character") {
          returnObject <- gsub("\\\"", "", result)
        } else if ("Character" == "Logical") {
          returnObject <- as.logical(jsonlite::fromJSON(result))
        } else {
          returnObject <- Character$new()
          returnObject$fromJSONString(result)
        }

        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        result <- jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        result <- httr::content(resp, "text", encoding = "UTF-8")
        Response$new(result, resp)
      }

    }
  )
)

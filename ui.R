library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Central Limit Theorem"),
  
  sidebarPanel(
    radioButtons("dist", "Parent distribution:",
                 list("Exponential" = "rexp",
                      "Normal" = "rnorm",
                      "Log-normal" = "rlnorm",
                      "Uniform" = "runif",
                      "Poisson" = "rpois",
                      "Cauchy (pathological: momentless)" = "rcauchy")),
    br(),
    
    sliderInput("n", 
                "Number of observations from parent distribution:", 
                value = 500,
                min = 2, 
                max = 1000),
    br(),
    
    sliderInput("k", 
                "Number of random variables sampled from parent distribution:", 
                value = 10,
                min = 2, 
                max = 400)
  ),
  
  mainPanel(
    plotOutput("plot", height="900px")
  )
))

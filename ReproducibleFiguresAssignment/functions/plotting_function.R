##PLOTTING FUNCTIONS
#function to plot exploratory figure of culmen depth vs body mass of chinstrap penguins
plot_exp_fig <- function(penguins_filtered) {
  #only want to use the data on chinstrap penguins
  penguins_filtered %>%
    #scatter plot with culmen depth on y axis and b mass on x axis
    ggplot(aes(x=culmen_depth_mm, y=body_mass_g)) +
    #colour the points red
    geom_point(colour="red") + 
    #make the background readable by changing the theme
    theme_bw() +   
    #add a title and lables to the axes
    labs(title="Culmen Depth VS Body Mass for Chinstrap Penguins", x="Culmen Depth (mm)",    
         y="Body mass (g)", colour="Sex")  
}

#function to plot results figure of culmen depth vs body mass of chinstrap penguins
plot_res_fig <- function(penguins_filtered) {
  #only want to use the data on Chinstrap penguins
  penguins_filtered %>%
    #scatter plot with culmen depth on y axis and b mass on x axis
    ggplot(aes(x=culmen_depth_mm, y=body_mass_g)) +
    #colour the points red
    geom_point(colour="red") + 
    #make the background readable by changing the theme
    theme_bw() +   
    #add a regression line and colour it blue
    geom_smooth(method=lm, se=FALSE, colour="blue") + 
    #add a title and lables to the axes
    labs(title="Culmen Depth VS Body Mass for Chinstrap Penguins", x="Culmen Depth (mm)",    
         y="Body mass (g)", colour="Sex")  
}
  
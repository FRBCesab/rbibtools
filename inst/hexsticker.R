#' Create an Hexagonal Sticker for the Package

hexSticker::sticker(
  
  subplot   = here::here("inst", "rlogo.png"),
  package   = "rbibtools",
  filename  = here::here("man", "figures", "hexsticker.png"),
  dpi       = 600,
  
  p_size    = 34.0,        # Title
  u_size    =  8.0,        # URL
  p_family  = "Aller_Rg",
  
  p_color   = "#F9D349",   # Title
  h_fill    = "#0D0823",   # Background
  h_color   = "#3E3E3E",   # Border
  u_color   = "#FEFDFF",   # URL
  
  p_x       = 1.00,        # Title
  p_y       = 0.55,        # Title
  s_x       = 1.00,        # Subplot
  s_y       = 1.20,        # Subplot
  
  s_width   = 0.60,        # Subplot
  s_height  = 0.60,        # Subplot
  
  spotlight = TRUE,
  l_alpha   = 0.10,
  l_width   = 4,
  l_height  = 4,
  
  url       = "https://github.com/frbcesab/"
)

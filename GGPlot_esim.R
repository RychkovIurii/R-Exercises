library(ggplot2)
library(palmerpenguins)
data(penguins)
#View(penguins)

#point
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species, size = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = 'purple')

#smooth

ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

#jitter
ggplot(data = penguins) + 
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#bar
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, color = cut))


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = cut))


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity))

#facet

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  facet_wrap(~species)


ggplot(data = diamonds) + 
  geom_bar(mapping=aes(x=color, fill=cut)) +
  facet_wrap(~cut)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  facet_grid(sex~species)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  facet_grid(~species)


ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  facet_grid(~sex)


#title add
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght")


#subtitle add
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species")


#caption add
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman")


#annotate add
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest")


#annotate color
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", 
           color="purple")

#annotate font
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", 
           color="purple", fontface="bold")

#annotate larger
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", 
           color="purple", fontface="bold", size=4.5)

#annotate angle
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman") +
  annotate("text", x=220, y=3500, label="The Gentoos are the largest", 
           color="purple", fontface="bold", size=4.5, angle=25)

#plot to variable
p <- ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, 
                           y = body_mass_g, 
                           color = species)) +
  labs(title = "Palmer Pinguins: Body Mass vs. Flipper Lenght", 
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr.Kristen Gorman")

p + annotate("text", x=220, y=3500, label="The Gentoos are the largest", 
             color="purple", fontface="bold", size=4.5, angle=25)


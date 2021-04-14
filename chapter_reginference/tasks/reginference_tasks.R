## Task 1

# Q1
library(tidyverse)

star_df = read.csv("https://www.dropbox.com/s/bf1fog8yasw3wjj/star_data.csv?dl=1")
star_df = star_df[complete.cases(star_df),]
star_df = star_df %>%
    filter(star %in% c("small","regular") &
               grade == "k") %>% 
    mutate(small = (star == "small"))

# Q2
library(infer)
bootstrap_distrib <- star_df %>% 
    specify(response = math, explanatory = small) %>%
    generate(reps = 1000, type = "bootstrap") %>%
    calculate(stat = "slope", order = c("TRUE","FALSE"))
 
# Q3
bootstrap_distrib %>%
    ggplot(aes(x = stat)) +
    geom_histogram(boundary = 9, binwidth = 0.5, col = "white", fill = "#d90502") +
    labs(
        x = "Bootstrap sample slope estimate",
        y = "Frequency"
    ) +
    theme_bw(base_size = 14)
    
mean(bootstrap_distrib$stat)
sd(bootstrap_distrib$stat)


## Task 2

# Q1
bootstrap_distrib %>%
    summarise(
        lower = quantile(stat, 0.025),
        upper = quantile(stat, 0.975)
    )

# Q2
# Very close
visualize(bootstrap_distrib, fill = "#d90502") + 
    shade_confidence_interval(endpoints = CI_theory, fill = NULL, 
                              linetype = "solid", color = "blue", size =1) + 
    shade_confidence_interval(endpoints = CI_simul, fill = NULL, 
                              linetype = "dashed", color = "black", size =1) + 
    theme_bw(base_size = 14) +
    labs(x = "b_small", y = "Frequency", title = "Theory based (solid blue) vs Simulated based (dotted black) 95% CIs") +
    xlim(lower_bound_theory-2,upper_bound_theory+2)


## Task 3.1

# Q1
library(AER)
data(CPS1985)
cps = CPS1985
?AER::CPS1985

# Q2
cps <- cps %>%
    mutate(log_wage = log(wage))

# Q3
reg1 <- lm(log_wage ~ gender + education, cps)
library(broom)
tidy(reg1)

# Q4
reg2 <- lm(log_wage ~ gender*education, cps)
tidy(reg2)

## Task 3.2
# Q1
cps %>%
    ggplot(aes(x = education, y = log_wage)) +
    geom_point()

# Q2
cps %>%
    ggplot(aes(x = education, y = log_wage)) +
    geom_point() +
    geom_smooth(method = "lm")

# Q3.1
cps_boot <- cps %>% rep_sample_n(reps = 1, size = nrow(cps), replace = TRUE)

# Q3.2
reg_bootsrap <- lm(log_wage ~ gender*education, cps_boot)
tidy(reg_bootsrap)

# Q3.3
intercept_men_bootstrap <- tidy(reg_bootsrap) %>% filter(term == "(Intercept)") %>% select(estimate) %>% pull()
intercept_men_bootstrap
slope_men_bootstrap <- tidy(reg_bootsrap) %>% filter(term == "education") %>% select(estimate) %>% pull()
slope_men_bootstrap

intercept_men_bootstrap = reg_bootstrap_sample$coefficients[1]
slope_men_bootstrap = reg_bootstrap_sample$coefficients[3]

intercept_women_bootstrap = reg_bootstrap_sample$coefficients[1] + reg_bootstrap_sample$coefficients[2]
slope_women_bootstrap = reg_bootstrap_sample$coefficients[3] + reg_bootstrap_sample$coefficients[4]

# Q3.4
cps %>%
    ggplot(aes(x = education, y = log_wage, color = gender)) +
    geom_point() +
    geom_smooth(method = "lm") +
    geom_abline(slope = slope_men_bootstrap, intercept = intercept_men_bootstrap) +
    geom_abline(slope = slope_women_bootstrap, intercept = intercept_women_bootstrap)


continent_countrycount <- dbSendQuery(con1, "SELECT c.continent_name AS Continent, COUNT(y.properties_properties_continent) AS CountryCount FROM allcontinents AS c LEFT JOIN countries AS y ON c.properties_properties_continent = y.properties_properties_continent GROUP BY c.continent_name")
dbFetch(continent_countrycount)

language_country <- dbSendQuery(con1, "SELECT l.properties_properties_name AS language, c.properties_properties_name AS countries FROM languages AS l FULL JOIN countries AS c ON l.properties_key = c.properties_key GROUP BY l.properties_properties_name, c.properties_properties_name")
dbFetch(language_country)

country_languagecount <- dbSendQuery(con1, "SELECT properties_properties_name AS Country, COUNT(properties_properties_languages) AS LanguageCount FROM countries GROUP BY properties_properties_name")
dbFetch(country_languagecount)

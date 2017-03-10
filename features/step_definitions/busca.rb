# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^eu faça uma busca no google por "([^"]*)"$/) do |txtinmetrics|
  visit ('http://www.google.com')
	fill_in 'q',:with => txtinmetrics
end

Quando(/^eu clicar no link "([^"]*)"$/) do |linkquemsomos|
   click_link linkquemsomos
end

Então(/^a página deve conter o texto "([^"]*)"$/) do |txt|
  expect(page).to have_content txt
end
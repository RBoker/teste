package br.com.brasilprev.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith (Cucumber.class)
@CucumberOptions(snippets=SnippetType.CAMELCASE,
					monochrome=true, 
					//plugin= {"html:target/surefire-reports/cucumber.html"},
					glue= {"br.com.brasilprev.steps"},
					features="classpath:features/",
					tags="@TESTAPI-01"
				) 
public class TestRunner {}
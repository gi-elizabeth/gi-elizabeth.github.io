---
layout: 				post
title:  				"Workspace Deployment Part 2"
date:   				2014-12-17
categories: 			development
published: 				true
permalink: 				/setup-workspace-part-2

---
<h3>Let's start your server</h3>
<ol>
	<li>Set your <code>.profile</code></li>
	<li>git pull</li>
	<li>Build your projects in a specific order
		<ol>
			<li>shared-platform - run for the first time in ghix-platform/setup/dependencies: <code>.install-maven-dep.sh</code>
			</li>
			<li>shared-models</li>
			<li>[your project]</li>
		</ol>
	</li>
	<li><code>mvn clean install -DskipTests</code> <span class="cheat"> "control + r" - start typing and it will finish it for you</span></li>
	<li>Change your <code>configuration.properites</code> to npoint to the correct database. <span class="cheat">Save a local version of a configuration.properties to save time.</span></li>
	<li>Go to where your <code>deploymentScript.sh</code> lives</li>
	<li>Run <code>./deploymentScript.sh</code></li>
	<li>Yippee! Your server has started!</li>
</ol>


<a href="{{ "/setup-workspace-part-3" | prepend: site.baseurl }}">Next - Workspace Deployment Part 3: Stop Server</a>



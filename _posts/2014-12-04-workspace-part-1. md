---
layout: 				post
title:  				"Build Your Workspace: (1/3)"
date:   				2014-12-17
categories: 			development
published: 				true
permalink: 				/setup-workspace-part-1

---
Here are deployment steps to set up your workspace like the smart engineers do.

<h3>Build Your Workspace: You only need to do this ONCE</h3>
<p>If you've done this already, skip to <a href="{{ "/setup-workspace-part-2" | prepend: site.baseurl }}">Start Server</a>
<ol>
	<li>Download <a href="http://tomcat.apache.org/download-70.cgi">tomcat</a> (Core: zip or tar.gz)</li>
	<li>Create <code>.profile</code> and change the specific paths
<pre>
M2_HOME=/Users/leong_e/Software/apache-maven-3.2.2
export M2_HOME
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# maven options
export MAVEN_OPTS="-Xmx1624m -XX:MaxPermSize=1624m"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_60.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

export GHIX_HOME="/Users/leong_e/Documents/Workfolder/beta/ghix"
export PASSWORD_KEY=ghix123
export CATALINA_HOME="/Users/leong_e/Software/apache-tomcat-7.0.55"
</pre>
	</li>
	<li>cd to <code>$CATALINA_HOME</code>
		<ul>
			<li><code>vi bin/setenv.sh</code> (will need to type this out the first time)</li>
			<li>add this inside the vim and change the specific path
<pre>
export JAVA_OPTS="-Dfile.encoding=UTF-8 -DGHIX_SECNTX_TYPE=db -Dorg.owasp.esapi.resources=/Users/leong_e/Documents/Workfolder/beta/ghix/ghix-setup/esapi -Dbitronix.tm.configuration=/Users/leong_e/Documents/Workfolder/beta/ghix/ghix-setup/conf/configuration.properties -DPASSWORD_KEY=ghix123 -Xms256m -Xmx2056m -XX:PermSize=1524m -XX:MaxPermSize=2556m"

export GHIX_HOME="/Users/leong_e/Documents/Workfolder/beta/ghix"
</pre>
			</li>
			<li>Hurry, get out of VIM! <code>:wq!</code></li>
		</ul>
	</li>
	<li>Put the file <a href="{{ "/resources/deploymentScript.sh" | prepend: site.baseurl }}">deploymentScript.sh</a> in desired folder</li>
	<li>copy from where your <code>ojdbc6-11.2.0.1.0.jar</code> file lives to your lib. 
<pre>
cp /Users/leong_e/.m2/repository/com/oracle/ojdbc6/11.2.0.1.0/ojdbc6-11.2.0.1.0.jar $CATALINA_HOME/lib
</pre>
	The space before $CATALINA_HOME is deliberate. And make sure to change the path to your own.
		<ul>
			<li>If the file is not there, go into <code>/SHARED-PLATFORMS/ghix/ghix-platform/setup/dependencies</code></li>
			<li>run <code>./install-maven-dep.sh</code></li>
			<li>This will update the .m2 repository</li>
			<li>run 
<pre>
cp /Users/seimithsuth/Documents/workfolder/SHARED-PLATFORMS/ghix/ghix-platform/setup/dependencies/ojdbc6-11.2.0.1.0.jar ~/.m2/repository/com/oracle/ojdbc6/11.2.0.1.0
</pre>
			</li>
		</ul>
	</li>
	<li>Check your <code>context.xml</code> in $CATALINA_HOME/conf/context.xml (Note: Depends on which project you're on. ie: phix, state...</li>
	<li>Change the source paths to your <code>.profile</code></li>
	<li>Go into the folder you put your deploymentScript.sh file and run it: <code>./deploymentScript.sh</code></li>
</ol>


<a href="{{ "/setup-workspace-part-2" | prepend: site.baseurl }}">Next - Start Your Server: (2/3)</a>






return {
    cmd = { 'java-language-server' },
    filetypes = { 'java' },
    root_markers = { 'build.gradle', 'build.gradle.kts', 'pom.xml', '.git' }
}

-- The mvn command to create a java project
-- mvn archetype:generate \
--   -DgroupId=com.estrathate \
--   -DartifactId=my-app \
--   -DarchetypeArtifactId=maven-archetype-quickstart \
--   -DinteractiveMode=false

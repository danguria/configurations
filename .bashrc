set -o vi

# for java
export CLASSPATH=""
export CLASSPATH=".:/usr/local/lib/antlr-4.5-complete.jar:$CLASSPATH"
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export CLASSPATH="$CLASSPATH$JAVA_HOME"

jhome () {
	export JAVA_HOME=`/usr/libexec/java_home $@`
		echo "JAVA_HOME:" $JAVA_HOME
		echo "java -version:"
		java -version
}

#for antlr4

alias antlr4='java -jar /usr/local/lib/antlr-4.5-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'


alias goclass='cd /Users/sugnkeunkim/GoogleDrive/study/GraduateSchool/tamu/course_work/'
alias gostudy='cd /Users/sugnkeunkim/GoogleDrive/study/'
alias ls="ls -G"
alias ll="ls -l"
alias ctags="/usr/local/Cellar/ctags/5.8_1/bin/ctags"
alias cscope="/usr/local/Cellar/cscope/15.8b/bin/cscope"

alias cdh2="cd /Users/sugnkeunkim/Documents/workspace/h2"

# for soot
export RT_JAR="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/rt.jar"

export soot_class=".:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/localedata.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/sunec.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/sunpkcs11.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/rt.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/jsse.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/charsets.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/zipfs.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/dnsns.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/sunjce_provider.jar:/System/Library/Java/Extensions/MRJToolkit.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/jce.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/resources.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/jfr.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/resources.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/rt.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/jsse.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/jce.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/charsets.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/jfr.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/dnsns.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/localedata.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/sunec.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/sunjce_provider.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/sunpkcs11.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/jre/lib/ext/zipfs.jar:/System/Library/Java/Extensions/MRJToolkit.jar"

alias soot='java -cp .:lib/soot-2.5.0.jar soot.Main -cp $soot_class'
alias sootjc='javac -cp .:lib/soot-trunk.jar:lib/soot-2.5.0.jar:$soot_class'
alias sootj='java -cp .:lib/soot-2.5.0.jar:lib/soot-trunk.jar:$soot_class'
alias rm='rm -i'

export PATH="/usr/local/bin:$PATH"
#export PATH="/Users/sugnkeunkim/GoogleDrive/study/GraduateSchool/tamu/course_work/csce604_programming_language_design/K-framework/k-4.0.0/bin:$PATH"
#export PATH="/Users/sugnkeunkim/GoogleDrive/study/GraduateSchool/tamu/course_work/csce604_programming_language_design/K-framework/k-3.6/k/bin:$PATH"
export PATH="/Users/sugnkeunkim/GoogleDrive/study/GraduateSchool/tamu/course_work/csce604_programming_language_design/K-framework/k/bin:$PATH"


#export PATH="/Users/sugnkeunkim/GoogleDrive/study/GraduateSchool/tamu/course_work/csce604_programming_language_design/K-framework/k-latest/k/k-distribution/target/release/k/bin:$PATH"


#export PATH="Users/sugnkeunkim/GoogleDrive/study/GraduateSchool/tamu/course_work/csce604_programming_language_design/K-framework/k/bin:$PATH"


# Create a backup of your .bash_profile
cp ~/.bashrc ~/.bashrc_org

# Be careful with this command
printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/virtualenvs' \
    'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bash_profile

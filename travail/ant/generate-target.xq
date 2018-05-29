(: let $bin-dir:="c:\bin-local" :)
for $code in ('MS','MF') return
  <target name="{$code}" description="extraction d'un mémento">
    <java classname="memento.extract.run.Run" failonerror="true">      
      <arg value="-jarpath"/>
      <arg value="&#36;&#123;bin-dir&#125;/MementoExtract"/>
      <arg value="-configpath"/>
      <arg value="&#36;&#123;bin-dir&#125;/MementoExtract/MementoExtract.conf.xml"/>
      <arg value="-support"/>
      <arg value="{$code}"/>
      <arg value="-millesime"/>
      <arg value="&#36;&#123;millesime&#125;"/>      
      <arg value="-redacteur"/>
      <arg value="&#36;&#123;version&#125;"/>
      <arg value="-nodeb start"/>
      <arg value="-nofin end"/>
      <arg value="-mode debug"/>
    </java>    
  </target> 
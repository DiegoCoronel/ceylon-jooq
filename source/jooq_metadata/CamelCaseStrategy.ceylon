import org.jooq.util {
	DefaultGeneratorStrategy,
	Definition
}
import org.jooq.tools {
	StringUtils
}

shared class CamelCaseStrategy() extends DefaultGeneratorStrategy() {
	
	shared actual String getJavaIdentifier(Definition definition) {
		return StringUtils.toCamelCaseLC(definition.outputName);
	}
	
}
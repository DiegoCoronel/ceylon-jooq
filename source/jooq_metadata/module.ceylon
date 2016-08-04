native ("jvm") module jooq_metadata "1.0.0" {
	
	import ceylon.interop.java "1.2.3";
	
	shared import java.jdbc "8";
	import java.base "8";
	import javax.jaxws "8";
	import javax.annotation "8";

	shared import maven:"org.jooq:jooq" "3.8.4";
	shared import maven:"org.jooq:jooq-codegen" "3.8.4";
	shared import maven:"org.jooq:jooq-meta" "3.8.4";

	shared import maven:"postgresql:postgresql" "9.1-901-1.jdbc4";

}

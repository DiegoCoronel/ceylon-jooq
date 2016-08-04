import org.jooq.util.jaxb {
	Configuration,
	Jdbc,
	Generator,
	Target,
	Database,
	CustomType,
	ForcedType,
	Strategy,
	Generate
}
import org.jooq.util {
	GenerationTool
}
import java.lang { JBoolean = Boolean }

shared void generate() {
	Configuration configuration = Configuration()
		.withJdbc(Jdbc()
			.withDriver("org.postgresql.Driver")
			.withUrl("jdbc:postgresql://localhost:5432/jooq")
			.withUser("jooq")
			.withPassword("jooq")
		)
		.withGenerator(Generator()
			.withDatabase(Database()
				.withName("org.jooq.util.postgres.PostgresDatabase")
				.withIncludes(".*")
				.withInputSchema("public")
				.withCustomTypes(CustomType()
					.withName("CString")
					.withType("ceylon.language.String")
					.withConverter("jooq_metadata.converter.CeylonStringConverter")
				)
				.withForcedTypes(ForcedType()
					.withName("CString")
					.withTypes("character.*")
				)
			)
			.withStrategy(Strategy()
				.withName("jooq_metadata.CamelCaseStrategy")
			)
			.withGenerate(Generate()
				.withPojos(JBoolean(false))
				.withDaos(JBoolean(false))
			)
			.withTarget(Target()
				.withPackageName("jooq_metadata.gen")
				.withDirectory("./source")
			)
		);
	
	GenerationTool.generate(configuration);
}
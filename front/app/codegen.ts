import type { CodegenConfig } from "@graphql-codegen/cli";

const config: CodegenConfig = {
  schema: "http://localhost:3000/graphql",
  documents: ["graphql/queries/*.ts"],
  generates: {
    "./graphql/generated/api.ts": {
      plugins: [
        "typescript",
        "typescript-operations",
        "typescript-react-apollo",
      ],
    },
  },
};
export default config;

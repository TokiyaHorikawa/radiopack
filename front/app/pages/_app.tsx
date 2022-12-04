import "../styles/globals.css";
import type { AppProps } from "next/app";
import {
  ApolloClient,
  InMemoryCache,
  ApolloProvider,
  createHttpLink,
} from "@apollo/client";

const cache = new InMemoryCache();
const link = createHttpLink({
  uri: "http://localhost:3000/graphql",
  credentials: "include",
});
const client = new ApolloClient({
  // uri: `${process.env.NEXT_PUBLIC_BACKEND_URL}/graphql`,
  link,
  cache,
});

export default function App({ Component, pageProps }: AppProps) {
  return (
    <ApolloProvider client={client}>
      <Component {...pageProps} />
    </ApolloProvider>
  );
}

import { gql } from "@apollo/client";

export default gql`
  query Posts {
    posts {
      id
      title
      description
    }
  }
`;

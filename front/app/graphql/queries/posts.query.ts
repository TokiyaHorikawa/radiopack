import { gql } from "@apollo/client";

interface Post {
  id: number;
  title: string;
  description?: string;
}

export interface PostsData {
  posts: Post[];
}

export const POSTS_QUERY = gql`
  query {
    posts {
      id
      title
      description
    }
  }
`;

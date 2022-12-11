import { usePostsQuery } from "../graphql/generated/api";
import type { Post } from "../types";

type ReturnType = {
  posts: Post[] | undefined;
};

export const usePosts = (): ReturnType => {
  const { data, loading, error } = usePostsQuery();

  const posts = data?.posts.map((post) => ({
    id: post.id,
    title: post.title || "",
    description: post.description || "",
  }));

  return { posts };
};

import React from "react";
import { NextPage } from "next";
import { useQuery } from "@apollo/client";
import { POSTS_QUERY, PostsData } from "../graphql/queries/posts.query";

type Props = {};

const Home: NextPage<Props> = () => {
  const { data } = useQuery<PostsData>(POSTS_QUERY);

  return (
    <div>
      <main>
        <h2>LISTの一覧</h2>
        <table>
          <tbody>
            {data?.posts.map(({ title, id }) => (
              <tr key={id}>
                <td>{id}.</td>
                <td>{title}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </main>
    </div>
  );
};

export default Home;

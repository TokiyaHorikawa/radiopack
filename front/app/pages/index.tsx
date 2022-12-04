import React from "react";
import { NextPage } from "next";

import { usePosts } from "../hooks/usePosts";

type Props = {};

const Home: NextPage<Props> = () => {
  const { posts } = usePosts();

  return (
    <div>
      <main>
        <h2>LISTの一覧</h2>
        <table>
          <tbody>
            {posts?.map(({ title, id }) => (
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

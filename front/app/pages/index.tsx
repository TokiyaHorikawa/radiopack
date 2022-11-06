import React, { FC } from "react";
import { GetStaticProps } from "next";

type List = {
  id: number;
  title: string;
};

type Props = {
  lists: List[];
};

const Home: FC<Props> = ({ lists }) => {
  return (
    <div>
      <main>
        <h2>LISTの一覧</h2>
        <table>
          <tbody>
            {lists.map(({ title, id }) => (
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

export const getStaticProps: GetStaticProps = async () => {
  // URLはlocalhostではなくapiとなる
  const response = await fetch("http://api:3000/lists", { method: "GET" });
  const json = await response.json();

  return {
    props: {
      lists: json,
    },
  };
};

export default Home;

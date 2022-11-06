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
    <>
      <h2>LISTの一覧</h2>
      <table>
        {lists.map(({ title, id }) => (
          <tr key={id}>
            <td>{id}.</td>
            <td>{title}</td>
          </tr>
        ))}
      </table>
    </>
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

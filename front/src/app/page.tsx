import CreatePost from "@/features/components/CreatePost/CreatePost";
import { getAllPosts } from "@/lib/fetchPost";


type Post = {
  id: number;
  title: string;
  body: string;
};

export default async function Home() {
  const posts: Post[] = await getAllPosts();

  return (
    <main>
      <CreatePost />
      <ul>
        {posts.map((post) => (
          <li key={post.id}>
            <span>タイトル: {post.title}</span>
            <span>内容: {post.body}</span>
          </li>
        ))}
      </ul>
    </main>
  );
}

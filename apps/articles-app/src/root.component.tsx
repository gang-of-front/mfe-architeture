import { HomePage, EditPage, ViewPage } from "./pages";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

const routerConfig = {
  basename: "/",
};

const router = createBrowserRouter(
  [
    {
      path: "/",
      element: <HomePage />,
    },
    {
      path: "/article",
      children: [
        {
          path: "create",
          element: <EditPage />,
        },
        {
          path: "edit",
          element: <EditPage />,
        },
        {
          path: "view",
          element: <ViewPage />,
        },
      ],
    },
  ],
  routerConfig
);

export default function Root() {
  return (
    <div>
      <RouterProvider router={router} />
    </div>
  );
}

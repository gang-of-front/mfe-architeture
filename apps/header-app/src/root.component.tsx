import { navigateToUrl } from 'single-spa'

export default function Root() {
  const handleNavigateClick = (url: string) => () => {
    navigateToUrl(url)
  }

  return (
    <nav className="navbar navbar-light">
      <div className="container">
        <a className="navbar-brand" onClick={handleNavigateClick('/')}>
          conduit
        </a>
        <ul className="nav navbar-nav pull-xs-right">
          <li className="nav-item">
            <a className="nav-link active" onClick={handleNavigateClick('/')}>
              Home
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" onClick={handleNavigateClick('/article/edit')}>
              {" "}
              <i className="ion-compose"></i>&nbsp;New Article{" "}
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" onClick={handleNavigateClick('/profile/settings')}>
              {" "}
              <i className="ion-gear-a"></i>&nbsp;Settings{" "}
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" onClick={handleNavigateClick('/profile/login')}>
              Sign in
            </a>
          </li>
          <li className="nav-item">
            <a className="nav-link" onClick={handleNavigateClick('/profile/register')}>
              Sign up
            </a>
          </li>
        </ul>
      </div>
    </nav>
  );
}

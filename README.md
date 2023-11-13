# RFGAS (React For GitHub AutoScript) Tutorial

The RFGAS is a script that simplifies the process of creating React projects, configuring GitHub Pages, and pushing the source code to GitHub. This tutorial will guide you through using the script.

## Prerequisites

Before getting started, make sure you have [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed on your system.

## Using the Script

1. **Download the RFGAS script:**

    ```bash
    wget https://your-script-link.com/RFGAS.sh
    ```

    Make sure to replace "https://your-script-link.com/RFGAS.sh" with the actual path to your script.

2. **Give execution permissions:**

    ```bash
    chmod +x RFGAS.sh
    ```

3. **Run the script:**

    ```bash
    ./RFGAS.sh <projectName> <githubUsername> <githubLink>
    ```

    Replace `<projectName>`, `<githubUsername>`, and `<githubLink>` with your desired values.

    For example:

    ```bash
    ./RFGAS.sh my-react-app mygithubuser https://github.com/mygithubuser/my-react-app.git
    ```

    The script will create a new React project, initialize it with GitHub Pages, and push it to GitHub.

4. **Customize your project:**

    After running the script, you can further customize your React project. Modify the code, add dependencies, and make other changes according to your needs.

5. **Push your changes:**

    The script creates an additional script called `pushMe.sh`. To push changes to your GitHub repository, run:

    ```bash
    ./pushMe.sh "Description of changes"
    ```

    This command will add, commit, and push the changes to GitHub.

## Conclusion

You have successfully completed using the RFGAS script to create a React project, configure GitHub Pages, and publish your code on GitHub. Continue developing your project and use `pushMe.sh` to simplify the process of updating the repository.

Happy coding! 🚀

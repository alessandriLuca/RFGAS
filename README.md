
# RFGAS (React For GitHub AutoScript) Tutorial
![Alt Text](img.png)

The RFGAS is a script that simplifies the process of creating React projects, configuring GitHub Pages, and pushing the source code to GitHub. This tutorial will guide you through using the script.

## Prerequisites

Before getting started, make sure you have [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed on your system.

If you encounter issues with your Node.js installation, you can try the following steps:

```bash
sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* ~/.npm
sudo rm -rf /usr/local/lib/node*
sudo rm -rf /usr/local/bin/node*
sudo rm -rf /usr/local/include/node*

sudo apt-get purge nodejs npm
sudo apt autoremove

# Download the latest tar.xz NodeJS file from https://nodejs.org/en/download/
tar -xf node-v#.#.#-linux-x64.tar.xz
sudo mv node-v#.#.#-linux-x64/bin/* /usr/local/bin/
sudo mv node-v#.#.#-linux-x64/lib/node_modules/ /usr/local/lib/
```
Replace #.#.# with the version you downloaded.
Verify the installation using:
```bash
node -v
npm -v
```
## Using the Script

1. **Clone the RFGAS repository:**

    ```bash
    git clone https://github.com/alessandriLuca/RFGAS/tree/main
    ```

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

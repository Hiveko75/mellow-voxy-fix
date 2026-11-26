// [voxy-fix] Full-screen pass that runs before the sky is drawn; see prepare.fsh.
void main() {
    gl_Position = ftransform();
}

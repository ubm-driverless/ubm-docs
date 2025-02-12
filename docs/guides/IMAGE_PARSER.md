# How to Use `image_parser.py`

`image_parser.py` is a command-line tool designed to assist in creating raceline and detector maps. While the tool automates most of the process, human supervision is required, and it will prompt for manual intervention when necessary.

## Input Parameters

To view the full list of input parameters, run:

```bash
$ image_parser.py -h
```

The key parameters are:

- **`source-image`**: The input image to process.
- **`output-name`**: The name of the output file.
- **`level`**: Controls the processing aggressiveness. Higher values are recommended for low-quality images, while lower values work best for high-quality images. The default value is usually sufficient, as manual intervention is required regardless to check and correct any errors.

## Running the Program

Once executed, the tool will:

- Remove all gray pixels.
- Attempt to fill in all borders.

After processing, the tool will pause and require manual intervention. The user must:

- Check if the output is correct.
- Apply a black background.
- Correct any errors, if necessary.

The result will be the **detector image**. Save this image in a separate file accordingly.

### Important Notice

**It is crucial to retain an unmodified copy of the image with the same filename.** The tool requires this file to proceed with the next steps.

## Continuing the Process

Once ready, follow the on-screen instructions to proceed. The tool will then:

1. Smooth the curves.
2. Pause again for manual intervention.

At this stage, the user must:

- Open the image.
- Apply a black background.
- Verify the results and fix any errors.

After saving the image and following the final instructions, the process will conclude, producing the **raceline image** as the final output. If needed, correct the last image

## Recommended Image Editing Tools

For simplicity, the following programs are recommended for image modifications:

- **PAINT** (Windows)
- **KOLOURPAINT** (GNU/Linux)
- Equivalent software on macOS

The demonstration video for this tool uses **KOLOURPAINT**.


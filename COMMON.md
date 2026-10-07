
## VENV

### In windows

#### Set up venv
run `batch_files\make_venv.bat`

#### update pip, and install 
python -m pip install --upgrade pip
pip install --upgrade nbformat ipynbname ipywidgets jupyter

### in wsl, use existing venv
avoid creating new venv to save space, run the following to activate venv1:
`source /projects_wsl/fine_tuning_new/venv_wsl_310_v1/bin/activate`
or venv2: 
`source /projects_wsl/fine_tuning_new/venv_wsl_310_v2/bin/activate`


## python notebook

if stucked at connecting to kernel in ipynb: 
pip install --upgrade ipykernel pyzmq jupyter_client

to manually define it in a ipynb book if it gets lost:
(e.g., in wsl) 
click on the current kernel, select `Select Anther Kernel`, `Python Environment`, `Create Python Environment`, `Enter interpreter Path`, 
enter: `/projects_wsl/fine_tuning_new/venv_wsl_310_v1/bin/` then click the file python. 

## AI

write in a markdown code block (mcb) to describe what it does, 

if needing code blocks inside the mcb, make it like
--code--```javascript 
...some code... 
--code--```
i.e., add --code-- before the three back ticks (in the same line) of the start and end line of such code block. however such adding --code-- rules only apply to code blocks within the writing markdown code block, not the markdown code block itself or code blocks outside.

use ## level titles as section titles if needed, 
avoid using bulletins. break into paragraphs. 
avoid directly copying the provided code into the writing, instead, describe it. 
wrap paths, vars, terms, etc in back ticks. 

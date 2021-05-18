.class public Lmtx;
.super Lmso;
.source "SourceFile"

# interfaces
.implements Lmuk;


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/support/design/widget/TextInputLayout;

.field private d:Landroid/support/design/widget/TextInputEditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ProgressBar;

.field private j:Lmvh;

.field private k:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lmso;-><init>()V

    return-void
.end method

.method static synthetic a(Lmtx;)Lmvh;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmtx;->j:Lmvh;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lmtx;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 137
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lmtx;->d:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lmtx;->j:Lmvh;

    invoke-interface {v2, v0, v1}, Lmvh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method static synthetic a(Lmtx;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmtx;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lmtx;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lmso;->a()V

    return-void
.end method

.method public bridge synthetic a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmso;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmso;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 220
    const v0, 0x7f090b55

    invoke-virtual {p0, v0}, Lmtx;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmtx;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lmtx;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lmtx;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lmso;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lmtx;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lmtx;->a:Lmsy;

    invoke-interface {v0, p1, p2}, Lmsy;->a(Ljava/lang/String;Z)V

    .line 206
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmso;->a(Z)V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lmso;->b()V

    return-void
.end method

.method public bridge synthetic b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmso;->b(I)V

    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 235
    const v0, 0x7f090b54

    invoke-virtual {p0, v0}, Lmtx;->b(I)V

    .line 236
    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lmso;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lmso;->e()V

    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lmtx;->c:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lmtx;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lmtx;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lmtx;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lmtx;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 155
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lmtx;->c:Landroid/support/design/widget/TextInputLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputLayout;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lmtx;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lmtx;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lmtx;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lmtx;->d:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->requestFocus()Z

    .line 164
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmtx;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lmtx;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->h()V

    .line 178
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lmtx;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lmtx;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->l()V

    .line 185
    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lmtx;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lmtx;->a:Lmsy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmsy;->a(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmtx;->a:Lmsy;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmtx;->a:Lmsy;

    invoke-interface {v0}, Lmsy;->m()V

    .line 199
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lmtx;->e:Landroid/widget/Button;

    const v1, 0x7f090b42

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 211
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lmtx;->e:Landroid/widget/Button;

    const v1, 0x7f090b45

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 216
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lmtx;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lmtx;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public bridge synthetic onAttach(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Lmso;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    const v0, 0x7f0403aa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lmso;->onDestroyView()V

    .line 145
    iget-object v0, p0, Lmtx;->j:Lmvh;

    invoke-interface {v0}, Lmvh;->d()V

    .line 146
    return-void
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lmso;->onDetach()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lmso;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f1001fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lmty;

    invoke-direct {v1, p0}, Lmty;-><init>(Lmtx;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f1011e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    .line 70
    const v0, 0x7f1011e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lmtx;->c:Landroid/support/design/widget/TextInputLayout;

    .line 71
    const v0, 0x7f1011e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lmtx;->d:Landroid/support/design/widget/TextInputEditText;

    .line 72
    const v0, 0x7f1011e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmtx;->e:Landroid/widget/Button;

    .line 73
    const v0, 0x7f1011e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmtx;->f:Landroid/widget/Button;

    .line 74
    const v0, 0x7f1011e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmtx;->g:Landroid/widget/LinearLayout;

    .line 75
    const v0, 0x7f1011e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmtx;->h:Landroid/widget/LinearLayout;

    .line 76
    const v0, 0x7f100068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmtx;->i:Landroid/widget/ProgressBar;

    .line 78
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    new-instance v1, Lmtz;

    invoke-direct {v1, p0}, Lmtz;-><init>(Lmtx;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 91
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    new-instance v1, Lmua;

    invoke-direct {v1, p0}, Lmua;-><init>(Lmtx;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 102
    iget-object v0, p0, Lmtx;->d:Landroid/support/design/widget/TextInputEditText;

    new-instance v1, Lmub;

    invoke-direct {v1, p0}, Lmub;-><init>(Lmtx;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 113
    iget-object v0, p0, Lmtx;->e:Landroid/widget/Button;

    new-instance v1, Lmuc;

    invoke-direct {v1, p0}, Lmuc;-><init>(Lmtx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lmtx;->f:Landroid/widget/Button;

    new-instance v1, Lmud;

    invoke-direct {v1, p0}, Lmud;-><init>(Lmtx;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lmtx;->b:Landroid/widget/EditText;

    sget-object v1, Lmwq;->CPF:Lmwq;

    invoke-static {v0, v1}, Lmwr;->a(Landroid/widget/EditText;Lmwq;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lmtx;->k:Landroid/text/TextWatcher;

    .line 130
    new-instance v0, Lmvi;

    invoke-direct {v0, p0}, Lmvi;-><init>(Lmuk;)V

    iput-object v0, p0, Lmtx;->j:Lmvh;

    .line 131
    iget-object v0, p0, Lmtx;->j:Lmvh;

    invoke-virtual {p0}, Lmtx;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lmvh;->a(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lmtx;->i:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 241
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lmtx;->i:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/ca/android/app/CaMDOProgressBar;->setVisibility(Landroid/widget/ProgressBar;I)V

    .line 246
    return-void
.end method

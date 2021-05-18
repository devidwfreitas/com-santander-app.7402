.class Llmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llmu;


# direct methods
.method constructor <init>(Llmu;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Llmv;->a:Llmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    new-instance v4, Lksa;

    invoke-direct {v4}, Lksa;-><init>()V

    .line 149
    new-instance v5, Lkqa;

    invoke-direct {v5}, Lkqa;-><init>()V

    .line 150
    const-string v3, ""

    const-string v0, ""

    .line 153
    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->a(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->b(Llmu;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Llmv;->a:Llmu;

    .line 154
    invoke-static {v0}, Llmu;->c(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->d(Llmu;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    :cond_1
    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-virtual {v0}, Llmu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Llmv;->a:Llmu;

    invoke-virtual {v1}, Llmu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    :cond_2
    :goto_0
    return-void

    .line 157
    :cond_3
    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->c(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Llmv;->a:Llmu;

    .line 158
    invoke-static {v0}, Llmu;->c(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0xb

    if-eq v0, v6, :cond_4

    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->c(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_4

    .line 159
    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-virtual {v0}, Llmu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Llmv;->a:Llmu;

    invoke-virtual {v6}, Llmu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090464

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 167
    :goto_1
    iget-object v6, p0, Llmv;->a:Llmu;

    invoke-static {v6}, Llmu;->a(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Llmv;->a:Llmu;

    .line 168
    invoke-static {v6}, Llmu;->a(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lmhj;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 169
    iget-object v2, p0, Llmv;->a:Llmu;

    invoke-virtual {v2}, Llmu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v6, p0, Llmv;->a:Llmu;

    invoke-virtual {v6}, Llmu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09044f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v3

    .line 176
    :goto_2
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 178
    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->e(Llmu;)Lbr/com/zup/multistatelayout/MultiStateLayout;

    move-result-object v0

    sget-object v1, Laor;->LOADING:Laor;

    invoke-virtual {v0, v1}, Lbr/com/zup/multistatelayout/MultiStateLayout;->setState(Laor;)V

    .line 180
    new-instance v0, Lkpx;

    invoke-direct {v0}, Lkpx;-><init>()V

    .line 182
    new-instance v1, Lkqx;

    invoke-direct {v1}, Lkqx;-><init>()V

    .line 183
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    iget-object v6, p0, Llmv;->a:Llmu;

    invoke-static {v6}, Llmu;->f(Llmu;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v1, v3}, Lkqx;->a(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lkqa;->a(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Llmv;->a:Llmu;

    invoke-static {v2}, Llmu;->g(Llmu;)Lkqa;

    move-result-object v2

    invoke-virtual {v2}, Lkqa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lkqa;->b(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v5, v1}, Lkqa;->a(Lkqx;)V

    .line 190
    invoke-virtual {v5, v4}, Lkqa;->a(Lksa;)V

    .line 191
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    iget-object v2, p0, Llmv;->a:Llmu;

    invoke-static {v2}, Llmu;->h(Llmu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lkqa;->c(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Llmv;->a:Llmu;

    invoke-static {v1}, Llmu;->i(Llmu;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkpx;->a(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v5}, Lkpx;->a(Lkqa;)V

    .line 195
    iget-object v1, p0, Llmv;->a:Llmu;

    invoke-static {v1}, Llmu;->k(Llmu;)Lkxw;

    move-result-object v1

    new-instance v2, Llmw;

    invoke-direct {v2, p0}, Llmw;-><init>(Llmv;)V

    new-instance v3, Llmx;

    invoke-direct {v3, p0}, Llmx;-><init>(Llmv;)V

    invoke-virtual {v1, v0, v2, v3}, Lkxw;->a(Lkpx;Lkxl;Lkxl;)V

    goto/16 :goto_0

    .line 162
    :cond_4
    iget-object v0, p0, Llmv;->a:Llmu;

    invoke-static {v0}, Llmu;->c(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    invoke-virtual {v6, v0}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lksa;->b(Ljava/lang/String;)V

    move v0, v2

    .line 164
    goto/16 :goto_1

    .line 172
    :cond_5
    iget-object v1, p0, Llmv;->a:Llmu;

    invoke-static {v1}, Llmu;->a(Llmu;)Landroid/support/design/widget/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move v8, v2

    move-object v2, v1

    move v1, v8

    .line 173
    goto/16 :goto_2
.end method

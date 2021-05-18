.class public Lagv;
.super Lakb;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/TextView;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field private o:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lakb;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lagv;->o:Landroid/app/Activity;

    invoke-virtual {p0}, Lagv;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->header_titulo:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lagl;->informacoes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_cheque_label:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_cheque_total:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_cheque_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_cheque_total:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_cartoes_label:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_cartoes_mes:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_cartoes_total:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_cartoes_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_cartoes_mes:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_cartoes_total:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_empr_label:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_empr_mes:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->disclaimer_empr_total:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_empr_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_empr_mes:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->disclaimer_empr_total:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->obs1:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->obs2:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->obs3:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->obs4:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->obs5:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->o:Landroid/app/Activity;

    sget v1, Lagg;->obs7:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lagv;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lagv;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->observacoes:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->t1:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->t2:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->t3:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->t4:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lagv;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lagv;->o:Landroid/app/Activity;

    sget v2, Lagl;->uso_consciente:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

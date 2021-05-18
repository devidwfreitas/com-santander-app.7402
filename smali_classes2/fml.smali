.class public Lfml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnez;


# instance fields
.field final synthetic a:Lcom/santander/app/RendaFixaResgateActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/RendaFixaResgateActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lfml;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lfml;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->b(Lcom/santander/app/RendaFixaResgateActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lfml;->a:Lcom/santander/app/RendaFixaResgateActivity;

    invoke-static {v0}, Lcom/santander/app/RendaFixaResgateActivity;->a(Lcom/santander/app/RendaFixaResgateActivity;)Lftf;

    move-result-object v0

    invoke-virtual {v0}, Lftf;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfte;

    invoke-virtual {v0}, Lfte;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnaj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

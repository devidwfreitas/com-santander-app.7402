.class public Lhuj;
.super Lhug;
.source "SourceFile"


# instance fields
.field private a:Lcom/santander/app/components/view/SantanderTextView;

.field private b:Lcom/santander/app/components/view/SantanderTextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c1

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 23
    invoke-direct {p0, v0}, Lhug;-><init>(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lhuj;->itemView:Landroid/view/View;

    const v1, 0x7f100460

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhuj;->a:Lcom/santander/app/components/view/SantanderTextView;

    .line 26
    iget-object v0, p0, Lhuj;->itemView:Landroid/view/View;

    const v1, 0x7f100461

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lhuj;->b:Lcom/santander/app/components/view/SantanderTextView;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lhuk;)V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lhuj;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lhuk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lhuj;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {p1}, Lhuk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

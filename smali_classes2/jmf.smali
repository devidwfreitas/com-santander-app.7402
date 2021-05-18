.class public Ljmf;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Ljmi;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljlj;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljmj;


# direct methods
.method public constructor <init>(Ljmj;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljmf;->a:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Ljmf;->b:Ljmj;

    .line 31
    return-void
.end method

.method static synthetic a(Ljmf;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljmf;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Ljmf;)Ljmj;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljmf;->b:Ljmj;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Ljmi;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    new-instance v1, Ljmi;

    invoke-direct {v1, v0}, Ljmi;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljlj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iput-object p1, p0, Ljmf;->a:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public a(Ljmi;I)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Ljmf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlj;

    .line 46
    iget-object v1, p1, Ljmi;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Ljlj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p1, Ljmi;->b:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Ljlj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p1, Ljmi;->itemView:Landroid/view/View;

    new-instance v1, Ljmg;

    invoke-direct {v1, p0, p2}, Ljmg;-><init>(Ljmf;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljmf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljmi;

    invoke-virtual {p0, p1, p2}, Ljmf;->a(Ljmi;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Ljmf;->a(Landroid/view/ViewGroup;I)Ljmi;

    move-result-object v0

    return-object v0
.end method

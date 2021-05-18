.class public Lllm;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lllo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkql;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lllp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkql;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lllm;->a:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic a(Lllm;)Lllp;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lllm;->b:Lllp;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lllm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lllo;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04036d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    new-instance v1, Lllo;

    invoke-direct {v1, p0, v0}, Lllo;-><init>(Lllm;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lllo;I)V
    .locals 4

    .prologue
    .line 47
    iget-object v0, p0, Lllm;->a:Ljava/util/List;

    invoke-virtual {p1}, Lllo;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkql;

    .line 48
    iget-object v1, p1, Lllo;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {p1}, Lllo;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0}, Lllm;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 50
    iget-object v1, p1, Lllo;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    :goto_0
    iget-object v1, p1, Lllo;->a:Lcom/santander/app/components/view/SantanderTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lkql;->a()Lkqk;

    move-result-object v3

    invoke-virtual {v3}, Lkqk;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " C/C "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lkql;->a()Lkqk;

    move-result-object v3

    invoke-virtual {v3}, Lkqk;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p1, Lllo;->c:Landroid/widget/LinearLayout;

    new-instance v2, Llln;

    invoke-direct {v2, p0, v0}, Llln;-><init>(Lllm;Lkql;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void

    .line 52
    :cond_0
    iget-object v1, p1, Lllo;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lllp;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lllm;->b:Lllp;

    .line 95
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lllm;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lllm;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lllo;

    invoke-virtual {p0, p1, p2}, Lllm;->a(Lllo;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lllm;->a(Landroid/view/ViewGroup;I)Lllo;

    move-result-object v0

    return-object v0
.end method

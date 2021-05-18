.class public Lmhs;
.super Lllm;
.source "SourceFile"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Lmhu;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lllm;-><init>()V

    .line 24
    iput-object p1, p0, Lmhs;->a:[Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic a(Lmhs;)Lmhu;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lmhs;->b:Lmhu;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lmhs;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public a(Lllo;I)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lmhs;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Lllo;->getAdapterPosition()I

    move-result v1

    aget-object v0, v0, v1

    .line 40
    iget-object v1, p1, Lllo;->c:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p1}, Lllo;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p0}, Lmhs;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 42
    iget-object v1, p1, Lllo;->b:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_0
    iget-object v1, p1, Lllo;->a:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v1, v0}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p1, Lllo;->c:Landroid/widget/LinearLayout;

    new-instance v2, Lmht;

    invoke-direct {v2, p0, v0}, Lmht;-><init>(Lmhs;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 44
    :cond_0
    iget-object v1, p1, Lllo;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lmhu;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lmhs;->b:Lmhu;

    .line 29
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmhs;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lllo;

    invoke-virtual {p0, p1, p2}, Lmhs;->a(Lllo;I)V

    return-void
.end method

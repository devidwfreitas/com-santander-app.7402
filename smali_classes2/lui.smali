.class Llui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llur;

.field final synthetic b:Lkvs;

.field final synthetic c:Lluh;


# direct methods
.method constructor <init>(Lluh;Llur;Lkvs;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Llui;->c:Lluh;

    iput-object p2, p0, Llui;->a:Llur;

    iput-object p3, p0, Llui;->b:Lkvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Llui;->a:Llur;

    invoke-static {v0}, Llur;->m(Llur;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    new-instance v0, Lcom/santander/app/seguros/ui/widgets/BankItemView;

    iget-object v1, p0, Llui;->c:Lluh;

    invoke-static {v1}, Lluh;->a(Lluh;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/santander/app/seguros/ui/widgets/BankItemView;-><init>(Landroid/content/Context;)V

    .line 111
    iget-object v1, p0, Llui;->c:Lluh;

    invoke-static {v1}, Lluh;->b(Lluh;)Lkwh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->setDesc(Lkwh;)V

    .line 112
    new-instance v1, Lluj;

    invoke-direct {v1, p0}, Lluj;-><init>(Llui;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/BankItemView;->setButtonOnClick(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Llui;->a:Llur;

    invoke-static {v1}, Llur;->m(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    .line 123
    :goto_0
    iget-object v0, p0, Llui;->b:Lkvs;

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 124
    iget-object v0, p0, Llui;->b:Lkvs;

    invoke-virtual {v0}, Lkvs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkwk;

    .line 125
    invoke-virtual {v0}, Lkwk;->d()Lkuw;

    move-result-object v4

    invoke-virtual {v4}, Lkuw;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    invoke-virtual {v0}, Lkwk;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 129
    :cond_0
    new-instance v4, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;

    iget-object v5, p0, Llui;->c:Lluh;

    invoke-static {v5}, Lluh;->a(Lluh;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v4, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->setDocument(Lkwk;)V

    .line 131
    new-instance v0, Lluk;

    invoke-direct {v0, p0}, Lluk;-><init>(Llui;)V

    invoke-virtual {v4, v0}, Lcom/santander/app/seguros/ui/widgets/DocumentItemView;->setListener(Lmbn;)V

    .line 137
    iget-object v0, p0, Llui;->a:Llur;

    invoke-static {v0}, Llur;->m(Llur;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_2
    new-instance v0, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;

    iget-object v1, p0, Llui;->c:Lluh;

    invoke-static {v1}, Lluh;->a(Lluh;)Lcom/santander/app/seguros/ui/sinister/activities/SinisterDetailActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v1, Llul;

    invoke-direct {v1, p0}, Llul;-><init>(Llui;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/DocumentAddItemView;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Llui;->a:Llur;

    invoke-static {v1}, Llur;->m(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    if-eqz v3, :cond_3

    iget-object v0, p0, Llui;->c:Lluh;

    invoke-static {v0}, Lluh;->b(Lluh;)Lkwh;

    move-result-object v0

    invoke-virtual {v0}, Lkwh;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Llui;->a:Llur;

    invoke-static {v0}, Llur;->n(Llur;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02036d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :goto_1
    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Llui;->a:Llur;

    invoke-static {v0}, Llur;->n(Llur;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0203c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

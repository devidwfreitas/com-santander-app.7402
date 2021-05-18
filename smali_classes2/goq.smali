.class public Lgoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgoy;


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/CheckCardGroup;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/CheckCardGroup;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lgoq;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/components/view/CheckCardView;Z)V
    .locals 5

    .prologue
    .line 140
    iget-object v0, p0, Lgoq;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardGroup;->d(Lcom/santander/app/components/view/CheckCardGroup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lgoq;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardGroup;->b(Lcom/santander/app/components/view/CheckCardGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/CheckCardView;

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/CheckCardView;->setOnCheckChangeListener(Lgoy;)V

    .line 144
    if-ne v0, p1, :cond_4

    .line 145
    invoke-virtual {v0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    .line 148
    :cond_2
    iget-object v2, p0, Lgoq;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v2}, Lcom/santander/app/components/view/CheckCardGroup;->e(Lcom/santander/app/components/view/CheckCardGroup;)Lgor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 149
    iget-object v2, p0, Lgoq;->a:Lcom/santander/app/components/view/CheckCardGroup;

    invoke-static {v2}, Lcom/santander/app/components/view/CheckCardGroup;->e(Lcom/santander/app/components/view/CheckCardGroup;)Lgor;

    move-result-object v2

    iget-object v3, p0, Lgoq;->a:Lcom/santander/app/components/view/CheckCardGroup;

    .line 150
    invoke-virtual {v0}, Lcom/santander/app/components/view/CheckCardView;->getId()I

    move-result v4

    .line 149
    invoke-interface {v2, v3, v0, v4}, Lgor;->a(Lcom/santander/app/components/view/CheckCardGroup;Lcom/santander/app/components/view/CheckCardView;I)V

    .line 157
    :cond_3
    :goto_1
    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/CheckCardView;->setOnCheckChangeListener(Lgoy;)V

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {v0}, Lcom/santander/app/components/view/CheckCardView;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/CheckCardView;->setChecked(Z)V

    goto :goto_1
.end method

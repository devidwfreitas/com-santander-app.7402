.class Lenm;
.super Leno;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Z

.field final synthetic c:Lekn;

.field final synthetic d:Lejm;

.field final synthetic e:Lepn;

.field final synthetic f:Z

.field final synthetic g:Lenl;


# direct methods
.method constructor <init>(Lenl;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLekn;Lejm;Lepn;Z)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lenm;->g:Lenl;

    iput-object p5, p0, Lenm;->a:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lenm;->b:Z

    iput-object p7, p0, Lenm;->c:Lekn;

    iput-object p8, p0, Lenm;->d:Lejm;

    iput-object p9, p0, Lenm;->e:Lepn;

    iput-boolean p10, p0, Lenm;->f:Z

    invoke-direct {p0, p2, p3, p4}, Leno;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lepo;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lenm;->c:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lenm;->f:Z

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lenm;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_1
    return-void
.end method

.method a(Leps;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 122
    iget-object v0, p0, Lenm;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 123
    iget-boolean v0, p0, Lenm;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lenm;->c:Lekn;

    .line 125
    :goto_0
    invoke-virtual {v0, p1, v1}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 123
    :cond_0
    new-instance v0, Lenx;

    iget-object v2, p0, Lenm;->d:Lejm;

    iget-object v3, p0, Lenm;->c:Lekn;

    iget-object v4, p0, Lenm;->e:Lepn;

    .line 124
    invoke-virtual {v4}, Lepn;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lenx;-><init>(Lejm;Lekn;Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-boolean v1, p0, Lenm;->i:Z

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v1, p0, Lenm;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    if-eq v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

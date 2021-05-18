.class final Lenv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lejx;
.implements Lekg;


# instance fields
.field final synthetic a:Lent;


# direct methods
.method private constructor <init>(Lent;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lenv;->a:Lent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lent;Lenu;)V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lenv;-><init>(Lent;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lejz;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lenv;->a:Lent;

    invoke-static {v0}, Lent;->a(Lent;)Lejm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lejm;->a(Ljava/lang/Object;)Lejz;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lejz;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lenv;->a:Lent;

    invoke-static {v0}, Lent;->a(Lent;)Lejm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lejm;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lejz;

    move-result-object v0

    return-object v0
.end method

.method public a(Lejz;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lejz;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lenv;->a:Lent;

    invoke-static {v0}, Lent;->a(Lent;)Lejm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lejm;->a(Lejz;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

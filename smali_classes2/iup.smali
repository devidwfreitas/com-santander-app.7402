.class Liup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liuo;


# direct methods
.method constructor <init>(Liuo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Liup;->b:Liuo;

    iput-object p2, p0, Liup;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Liup;->b:Liuo;

    invoke-static {v0}, Liuo;->a(Liuo;)Lium;

    move-result-object v0

    iget-object v1, p0, Liup;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lium;->d(Ljava/lang/String;)V

    .line 236
    return-void
.end method

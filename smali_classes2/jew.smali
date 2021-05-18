.class Ljew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljdi;

.field final synthetic c:Ljep;


# direct methods
.method constructor <init>(Ljep;ILjdi;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Ljew;->c:Ljep;

    iput p2, p0, Ljew;->a:I

    iput-object p3, p0, Ljew;->b:Ljdi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 300
    iget v0, p0, Ljew;->a:I

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Ljew;->c:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    iget-object v1, p0, Ljew;->c:Ljep;

    iget-object v2, p0, Ljew;->b:Ljdi;

    invoke-static {v1, v2}, Ljep;->b(Ljep;Ljdi;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljeo;->a(Lgvb;)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Ljew;->c:Ljep;

    invoke-static {v0}, Ljep;->a(Ljep;)Ljeo;

    move-result-object v0

    iget-object v1, p0, Ljew;->c:Ljep;

    iget-object v2, p0, Ljew;->b:Ljdi;

    invoke-static {v1, v2}, Ljep;->b(Ljep;Ljdi;)Lgvb;

    move-result-object v1

    invoke-interface {v0, v1}, Ljeo;->c(Lgvb;)V

    goto :goto_0
.end method

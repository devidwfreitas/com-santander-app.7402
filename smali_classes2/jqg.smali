.class Ljqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkw;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljqf;


# direct methods
.method constructor <init>(Ljqf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Ljqg;->c:Ljqf;

    iput-object p2, p0, Ljqg;->a:Ljava/lang/String;

    iput-object p3, p0, Ljqg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 32
    check-cast p1, Ljqa;

    .line 34
    iget-object v0, p0, Ljqg;->c:Ljqf;

    invoke-static {v0}, Ljqf;->a(Ljqf;)Ljrd;

    move-result-object v0

    .line 35
    invoke-virtual {p1}, Ljqa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljqa;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ljqg;->a:Ljava/lang/String;

    iget-object v4, p0, Ljqg;->b:Ljava/lang/String;

    .line 34
    invoke-interface {v0, v1, v2, v3, v4}, Ljrd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

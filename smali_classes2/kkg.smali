.class Lkkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfoh;


# instance fields
.field final synthetic a:Lkia;

.field final synthetic b:Lkkf;


# direct methods
.method constructor <init>(Lkkf;Lkia;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lkkg;->b:Lkkf;

    iput-object p2, p0, Lkkg;->a:Lkia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lkkg;->b:Lkkf;

    invoke-static {v0}, Lkkf;->b(Lkkf;)Lkki;

    move-result-object v0

    iget-object v1, p0, Lkkg;->b:Lkkf;

    invoke-static {v1}, Lkkf;->a(Lkkf;)Lkic;

    move-result-object v1

    iget-object v2, p0, Lkkg;->a:Lkia;

    invoke-virtual {v0, v1, v2}, Lkki;->a(Lkic;Lkia;)V

    .line 39
    return-void
.end method

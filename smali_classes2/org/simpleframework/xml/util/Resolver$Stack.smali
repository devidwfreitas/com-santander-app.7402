.class Lorg/simpleframework/xml/util/Resolver$Stack;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<TM;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/Resolver;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/util/Resolver;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 364
    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/util/Resolver;Lorg/simpleframework/xml/util/Resolver$1;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;-><init>(Lorg/simpleframework/xml/util/Resolver;)V

    return-void
.end method


# virtual methods
.method public purge(I)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    iget-object v0, v0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 341
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->remove(I)Ljava/lang/Object;

    .line 342
    return-void
.end method

.method public bridge synthetic push(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 318
    check-cast p1, Lorg/simpleframework/xml/util/Match;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->push(Lorg/simpleframework/xml/util/Match;)V

    return-void
.end method

.method public push(Lorg/simpleframework/xml/util/Match;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack;->this$0:Lorg/simpleframework/xml/util/Resolver;

    iget-object v0, v0, Lorg/simpleframework/xml/util/Resolver;->cache:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 329
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->addFirst(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public sequence()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TM;>;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;-><init>(Lorg/simpleframework/xml/util/Resolver$Stack;)V

    return-object v0
.end method

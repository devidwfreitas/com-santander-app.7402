.class Lorg/dom4j/rule/RuleManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/dom4j/rule/Action;


# instance fields
.field final synthetic this$0:Lorg/dom4j/rule/RuleManager;

.field final synthetic val$mode:Lorg/dom4j/rule/Mode;


# direct methods
.method constructor <init>(Lorg/dom4j/rule/RuleManager;Lorg/dom4j/rule/Mode;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lorg/dom4j/rule/RuleManager$1;->this$0:Lorg/dom4j/rule/RuleManager;

    iput-object p2, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/dom4j/Node;)V
    .locals 1

    .prologue
    .line 165
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Element;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    instance-of v0, p1, Lorg/dom4j/Document;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/dom4j/rule/RuleManager$1;->val$mode:Lorg/dom4j/rule/Mode;

    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {v0, p1}, Lorg/dom4j/rule/Mode;->applyTemplates(Lorg/dom4j/Document;)V

    goto :goto_0
.end method
